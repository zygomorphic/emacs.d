(package-initialize)

;; 设置打开配置文件函数
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;设置初始目录为rails项目目录  
;;(setq default-directory "d:\\rails")

(add-to-list 'load-path "~/.emacs.d/lisp/core")
(add-to-list 'load-path "~/.emacs.d/lisp/setting")
(add-to-list 'load-path "~/.emacs.d/lisp/themes")
(add-to-list 'load-path "~/.emacs.d/github/neotree")

(require 'init-packages)
(require 'init-themes)
(require 'init-default-buffer)
(require 'init-buffer-mode)
(require 'init-keybindings)
(require 'init-major-mode)
(require 'init-rust)
(require 'neotree)
(require 'init-org)
(require 'rainbow-delimiters)


(setq custom-file (expand-file-name "lisp/themes/custom.el" user-emacs-directory))
(load-file custom-file)