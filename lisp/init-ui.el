;; 基本配置
(set-default-font "Monaco-14")

(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;(load-theme 'monokai 1)
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)
;; 关闭图标状态栏
(tool-bar-mode -1)
;; 关闭滚动条
(scroll-bar-mode -1)
;; 打开行号
(global-linum-mode t)
;; 取消欢迎屏幕
(setq inhibit-splash-screen t)
;; 设置光标模式
(setq-default cursor-type 'bar)

(global-hl-line-mode t)

(provide 'init-ui)
