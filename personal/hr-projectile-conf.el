;; combine projectile and virtualenvwrapper and flycheck.

(require 'projectile)
(prelude-require-package 'virtualenvwrapper)

(setq projectile-switch-project-action
      '(lambda ()
         (venv-projectile-auto-workon)
         (setq flycheck-pylintrc "./pylintrc")))

(provide 'hr-projectile-conf)
