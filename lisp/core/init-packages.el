(when (>= emacs-major-version 24)
    (require 'package)
    (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/"))))
;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
 (defvar my/packages '(
		       company
		       hungry-delete
		       monokai-theme
		       window-numbering
		       web-mode
		       toml-mode
		       rust-mode
		       racer
		       org
		       org-pomodoro
		       org-agenda-property
		       markdown-mode
		       cargo
		       flycheck
		       flycheck-rust
		       w3m
		       git-commit
		       swiper
		       counsel
		       smartparens
		       js2-mode
		       nodejs-repl
		       ;;		       popwin
		       color-theme-solarized		       
		       ) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(require 'hungry-delete)
(global-hungry-delete-mode t)
;; 配置 swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; 括号匹配
;;(smartparens-global-mode t)
(require 'smartparens-config)
(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
(add-hook 'rust-mode-hook #'smartparens-mode)
(add-hook 'js2-mode-hook #'smartparens-mode)
(add-hook 'shell-script-mode-hook #'smartparens-mode)

;; 文件末尾
(provide 'init-packages)
