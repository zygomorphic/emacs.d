;; 设置打开配置文件快捷键
(global-set-key (kbd "<f2>") 'open-my-init-file)
;; swipei 相关快捷键
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
;; recentf 相关快捷键
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-c p f") 'counsel-git)


;;系统剪贴板快捷键（C-c C-c复制，C-v粘贴）  
(global-set-key "\C-c\C-c" 'clipboard-kill-ring-save)  
(global-set-key "\C-c\C-v" 'clipboard-yank)
;;允许使用C-z作为命令前缀  
(define-prefix-command 'ctl-z-map)  
(global-set-key (kbd "C-z") 'ctl-z-map)

;;neotree目录树快捷键
(global-set-key [f8] 'neotree-toggle)

(global-set-key (kbd "C-x C-b") 'ibuffer)



(provide 'init-keybindings)
