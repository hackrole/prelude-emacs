;;(setq url-proxy-services '(("no_proxy" . "^\\(localhost\\|127.0.0.1\\)")
;;                           ("http" . "http://127.0.0.1:8090")
;;                           ("https" . "http://127.0.0.1:8090")))

;; for the key translate
;; redefine the ctrl-x to ctrl-q, and unset the ctrl-xo
(global-set-key (kbd "C-q") ctl-x-map)
(global-unset-key (kbd "C-x"))

;; not use prelude themes
(setq prelude-theme nil)

;; mini mode control
(add-hook 'after-init-hook (lambda ()
                             (global-linum-mode t)))
