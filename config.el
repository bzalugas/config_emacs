;;Take all the screen
;;(add-to-list 'initial-frame-alist '(fullscreen . fullboth))
;;Take all the screen but with dock & title bar
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq user-full-name "bzalugas"
      user-mail-address "bastien.zalugas@hotmail.fr")

(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)

(load! "list.el")
(load! "string.el")
(load! "comments.el")
(load! "header.el")

(set-language-environment "UTF-8")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
	  		    64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

(defconst perso-c-java-style
  '(
    (c-tab-always-indent           . t)
    (c-offsets-alist               . (
				      (inline-open          .   0)
				      (defun-block-intro    .   +)
				      (substatement         .   +)
				      (substatement-open    .   0)
				      (func-decl-cont       .   0))
    ))
  )

(defun custom-c-mode-hook ()
  ;; Add personnal style
  (c-add-style "Perso" perso-c-java-style 'set-this-style)
  ;; Auto-newline mode
  (c-toggle-auto-state 1)
  ;; Column indicator
  (setq display-fill-column-indicator-column 80)
  (setq display-fill-column-indicator-character ?\|)
  (display-fill-column-indicator-mode 1)
  ;; Default tabs & indentation
  (setq-default tab-width 4)
  (setq-default indent-tabs-mode t)
  (setq-default c-basic-offset 4))
(add-hook 'c-mode-hook 'custom-c-mode-hook)

(defun custom-java-mode-hook ()
  ;; Add personnal style
  (c-add-style "Perso" perso-c-java-style 'set-this-style)
  ;; Auto-newline mode
  (c-toggle-auto-state 1)
  ;; Default tabs & indentation
  (setq-default tab-width 4)
  (setq-default indent-tabs-mode t)
  (setq-default c-basic-offset 4))
(add-hook 'java-mode-hook 'custom-java-mode-hook)

(setq-default confirm-kill-emacs nil)

(setq org-directory "~/org/")
(setq org-agenda-files '("~/org/")) ;;don't work

(after! org
  (setq org-agenda-files '("~/org/agenda.org"))
  (setq org-log-done 'time)
  (setq org-todo-keywords '(
			    (sequence "TODO(t)" "WAIT(w)" "IN PROGRESS(i)" "|" "DONE(d)" "ABORTED(a)")
			    (sequence "PROJ(p)" "WAIT(w)" "IN PROGRESS(i)" "|" "FINISHED(s)" "ABORTED(a)")
			    (sequence "CODE(c)" "WAIT(w)" "IN PROGRESS(i)" "|" "CODED(d)" "ABORTED(a)")))
  (setq org-todo-keyword-faces
	'(("TODO" . (:foreground "yellow3"))
	  ("PROJ" . (:foreground "yellow3"))
	  ("CODE" . (:foreground "yellow3"))
	  ("WAIT" . (:foreground "orange"))
	  ("IN PROGRESS" . (:foreground "orange"))
	  ("DONE" . (:foreground "green"))
	  ("ABORTED" . org-done)
	  ("FINISHED" . (:foreground "green"))
	  ("CODED" (:foreground "green"))))
)

(add-load-path! "~/.doom.d/org-bullets")
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq fringe-mode '(left-only))
