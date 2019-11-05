
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; cargo 配置
(add-hook 'rust-mode-hook 'cargo-minor-mode)
;; flycheck-rust 配置
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
;; rustfmt 配置
;; (define-key rust-mode-map (kbd "C-c C-m" #'rust-format-buffer)
;; racer 配置 
(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path (expand-file-name "~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode #'eldoc-mode)
(add-hook 'rust-mode-hook
        (lambda ()
            (setq flycheck-mode-hook #'flycheck-rust-setup)))
;; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
;; toml 配置
(add-hook 'toml-mode 'company-mode)


(provide 'init-rust) 
