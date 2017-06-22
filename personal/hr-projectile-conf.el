;; combine projectile and virtualenvwrapper and flycheck.

(prelude-require-package 'virtualenvwrapper)
(require 'projectile)
(require 'virtualenvwrapper)

;; (setq projectile-switch-project-action
;;       '(lambda ()
;;          (venv-projectile-auto-workon)
;          (setq flycheck-pylintrc "./pylintrc")))

(provide 'hr-projectile-conf)
