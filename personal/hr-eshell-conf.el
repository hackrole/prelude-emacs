;;; config for eshell
;; make eshell goto begin works good both at emacs and evil-mode
(defun my-eshell-hook ()
  "define keymap for eshell in evil-mode"
   (define-key evil-insert-state-local-map (kbd "C-a") 'eshell-bol)
   (define-key evil-emacs-state-local-map (kbd "C-a") 'eshell-bol))

;; make eshell goto begin works good both at emacs and evil-modee

;; provide
(provide 'hr-eshell-conf)
