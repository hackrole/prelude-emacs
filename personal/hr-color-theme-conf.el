;; color-theme
(prelude-require-package 'color-theme)
(color-theme-initialize)

(add-hook 'after-init-hook (lambda ()
                             (color-theme-robin-hood)
                             (message "after init hello world")) t)

;; provide
(provide 'hr-color-theme-conf)
