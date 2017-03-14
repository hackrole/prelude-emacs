;; yasnippet conf
(prelude-require-package 'yasnippet)
(require 'yasnippet)
(yas-global-mode 1)

;; fix final new line error
;; (setq mode-require-final-newline nil)   ;

;; set keys
;; unset the <tab> from yas-expand and prev-field/next-field
;; (setq yas-trigger-key nil)
;; (define-key yas-minor-mode-map (kbd "<tab>") nil)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)
;; (define-key yas-keymap [(tab)] nil)
;; (define-key yas-keymap (kbd "TAB") nil)
;; (define-key yas-keymap [(shift tab)] nil)
;; (define-key yas-keymap [backtab] nil)
;; set key for yas use
;; (define-key yas-minor-mode-map (kbd "C-.") 'yas-expand)
;; (define-key yas-keymap (kbd "C-j") 'yas-prev-field)
;; (define-key yas-keymap (kbd "C-k") 'yas-next-field-or-maybe-expand)
;; (global-set-key (kbd "C-.") 'yas-expand)

;; (add-hook 'python-mode-hook
;;           (lambda ()
;;             (set (make-local-variable 'company-backends)
;;                                       '((company-anaconda company-dabbrev-code 'company-yasnippet)))))

;; options
;;(setq yas-indent-line "fixed")
(setq mode-require-final-newline nil)

;; global keys for yas use(desc table/new snippet)
(define-prefix-command 'yas-global-map)
(global-set-key (kbd "C-\\ y") 'yas-global-map)
(global-set-key (kbd "C-\\ y d") 'yas-describe-tables)
(global-set-key (kbd "C-\\ y i") 'yas-insert-snippet)
(global-set-key (kbd "C-\\ y n") 'yas-new-snippet)
(global-set-key (kbd "C-\\ y c") 'yas-recompile-all)
(global-set-key (kbd "C-\\ y l") 'yas-reload-all)

(defun hr-yasnippet-recompile-and-reload ()
  "make recompile and reload together"
  (interactive)
  (yas-recompile-all)
  (yas-reload-all))
(global-set-key (kbd "C-\\ y r") 'hr-yasnippet-recompile-and-reload)

;; provide
(provide 'hr-yasnippet-conf)
