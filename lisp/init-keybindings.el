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

(provide 'init-keybindings)
