
;; (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; cargo 配置
;; (add-hook 'rust-mode-hook 'cargo-minor-mode)
;; flycheck-rust 配置
;; (with-eval-after-load 'rust-mode
  ;; (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
;; rustfmt 配置
;; (define-key rust-mode-map (kbd "C-c C-m" #'rust-format-buffer)
;; racer 配置 
;; (setq racer-cmd "~/.cargo/bin/racer")
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode #'eldoc-mode)
;; (add-hook 'rust-mode-hook
        ;; (lambda ()
            ;; (setq flycheck-mode-hook #'flycheck-rust-setup)))
;; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
;; (setq company-tooltip-align-annotations t)
;; toml 配置
;; (add-hook 'toml-mode 'company-mode)

;; (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(setq exec-path (append exec-path '("~/.cargo/bin")))
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path (expand-file-name "~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))


;; rust相关快捷键
;; (global-set-key [f9] 'rust-format-buffer)
;; (global-set-key [f5] 'cargo-process-test)
;; (global-set-key [f6] 'cargo-process-run)
;; (global-set-key [f7] 'cargo-process-build)

(add-hook 'rust-mode-hook
	  '(lambda ()
	     (racer-mode)
	     (flycheck-mode)
       (flycheck-rust-setup)
	     (eldoc-mode)
       (cargo-minor-mode)
	     (company-mode) ;; 使用 company 作补全前端
	     (local-set-key (kbd "M-.") #'racer-find-definition)
	     (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
       (local-set-key [(f5)] 'cargo-process-test)
       (local-set-key [(f6)] 'cargo-process-run)
       (local-set-key [(f7)] 'cargo-process-build)
       (local-set-key [(f9)] 'rust-format-buffer)))


(provide 'init-rust) 
