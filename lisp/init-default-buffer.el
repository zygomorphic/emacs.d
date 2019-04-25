;; 取消备份文件和自动保存
(setq make-backup-files nil)
(setq auto-save-default nil)
;; 设置自动提示
(global-company-mode t)

(global-auto-revert-mode t)
;;(global-hl-line-highlight t)

(delete-selection-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(setq ring-bell-function 'ignore)

(provide 'init-default-buffer)
