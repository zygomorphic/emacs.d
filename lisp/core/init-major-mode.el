(setq auto-mode-alist
      (append
       '(("\\.rs\\'" . rust-mode))
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(provide 'init-major-mode)
