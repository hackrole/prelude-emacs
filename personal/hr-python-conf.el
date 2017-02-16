;;; config for python-mode
;; combine evil-mode with anaconda-mode
(defun hr-redefine-anaconda-key ()
  "redefine keymap for anaconda, make it works in evil normal state"
  (define-key evil-normal-state-map (kbd "M-.") 'anaconda-mode-find-definitions)
  (define-key evil-normal-state-map (kbd "M-,") 'anaconda-mode-find-assignments)
  (define-key evil-normal-state-map (kbd "M-r") 'anaconda-mode-find-references)
  (define-key evil-normal-state-map (kbd "M-*") 'anaconda-mode-go-back)
  (define-key evil-normal-state-map (kbd "M-?") 'anaconda-mode-show-doc))

(add-hook 'python-mode-hook 'hr-redefine-anaconda-key)

;; provide
(provide 'hr-python-conf)
