(package-initialize)

;; 设置打开配置文件函数
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)
(require 'init-ui)
(require 'init-default-buffer)
(require 'init-buffer-mode)
(require 'init-keybindings)
(require 'init-major-mode)
(require 'init-rust)
(require 'init-org)


(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)
