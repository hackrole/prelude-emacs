;; add mu4e to load path if needed
;; (add-to-list 'load-path "<mu4e path>")

(require 'mu4e)
(require 'smtpmail)

(setq
 messag-send-mail-function 'smtpmail-send-it
 starttls-use-gnutls t
 mu4e-sent-message-behavior 'sent
 mu4e-sent-folder "/mb_gmail/Sent Items"
 mu4e-drafts-folder "/mb_gmail/Drafs"
 user-mail-address "daipeng123456@gmail.com"
 user-full-name "Hackrole"
 smtpmail-default-smtp-server "smtp.gmail.com"
 smtpmail-smtp-user "daipeng12456@gmail.com"
 smtpmail-smtp-server "smtp.gmail.com"
 smtpmail-stream-type 'starttls
 smtpmail-smtp-service 587)

(setq mu4e-maildir "~/Maildir"
      mu4e-trash-folder "/Trash"
      mu4e-refile-folder "/Archve"
      mu4e-get-mail-command "mbsync -a"
      mu4e-update-interval 300 ;; second
      mu4e-view-show-images t
      mu4e-compose-signature-auto-include nil
      mu4e-view-show-addresses t
      mu4e-attachmen-dir "~/Downloads"
      mu4e-use-fancy-chars t)

;; mail directory shortcuts
(setq mu4e-maildir-shortcuts
      '(
        ("/mb_gmail/INBOX" . ?h)
        ("/mb_gmail/Archive" . ?H)
        ("/mb_gmail/Sent Items" . ?s)))

;; mail bookmarks
(setq mu4e-bookmarks
      `(
        ("flag:unread AND NOT flag:trashed" "Unread message" ?u)
        ("flag:unread" "Unread messages" ?n)
        ("date:today..now" "Today's messages" ?t)
        ("date:7d..now" "Last 7 days" ?w)
        ("mime:image/*" "Messages with images" ?p)
        (,(mapconcat 'identity
                     (mapcar
                      (lambda (maildir)
                        (concat "maildir:" (car maildir)))
                      mu4e-maildir-shortcuts) " OR ")
         "All inboxes" ?i)))

(require 'org-mu4e)
(setq org-mu4e-convert-to-html t)

;; add org-mime path
;; (add-to-path 'load-path "<org-mime>")
;;(require 'org-mime)
