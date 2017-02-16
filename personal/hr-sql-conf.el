(setq sql-mysql-login-params
      '((user :default "root")
        (database :default "")
        (server :default "localhost")))

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

;; default servers
(setq sql-connection-alist
      '((mysql (sql-product 'mysql)
               (sql-server "localhost")
               (sql-user "root")
               (sql-password "")
               (sql-database "tms_dev"))
        ))

(defun my-sql-connect (product connection)
  (setq sql-product product)
  (sql-connect connection))

(defun sqlconnect-mysql ()
  (interactive)
  (my-sql-connect 'mysql 'mysql))

(global-set-key (kbd "C-\\ s") 'sqlconnect-mysql)

(provide 'hr-sql-conf)
