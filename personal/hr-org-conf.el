;;; config for org-mode
;; set org-agenda files
(setq org-agenda-files '("~/.emacs.d/org-agenda/work_plan.org"
                         "~/.emacs.d/org-agenda/personal.org"))

;; set keys
(add-hook 'org-mode-hook (lambda ()
                           (setq tab-always-indent nil)
                           (local-set-key (kbd "C-.") 'org-time-stamp)
                           (local-set-key (kbd "C-,") 'org-time-stamp-inactive)))

;; provide
(provide 'hr-org-conf)
