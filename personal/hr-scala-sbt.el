(prelude-require-package 'sbt-mode)

(require 'prelude-scala)
(require 'sbt-mode)

(defun play-start ()
  "start play console."
  (interactive)
  (let ((sbt:program-name "play"))
    (sbt-start)))
(setq scala-indent:use-javadoc-style t)

(defun test-only ()
  "run test with current file."
  (interactive)
  (sbt-command (concat "testOnly " (find-spec-name))))

(defun find-spec-name ()
  "find spec name of current buffer."
  (concat "*." (file-name-sans-extension (file-name-nondirectory (buffer-name)))))

(defun compile-sbt-project ()
  "compile the sbt projet."
  (sbt-command "test:compile"))

(add-hook 'scala-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'compile-sbt-project)))

(provide 'hr-scala-sbt)