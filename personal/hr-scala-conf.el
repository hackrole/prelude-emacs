;; install ensime package
(prelude-require-package 'ensime)

(setq ensime-sbt-command "/Users/daipeng/.jenv/shims/sbt"
      sbt:program-name "/Users/daipeng/.jenv/shims/sbt")

;; add exec path
(setq exec-path (append exec-path '("/Users/daipeng/.jenv/shims")))
(setenv "PATH" (shell-command-to-string "/bin/bash -c 'echo -n $PATH"))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
