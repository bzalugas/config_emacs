;;Take all the screen
;;(add-to-list 'initial-frame-alist '(fullscreen . fullboth))
;;Take all the screen but with dock & title bar
;; (add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq user-full-name "bazaluga"
      user-mail-address "bazaluga@student.42.fr")

(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)

(setq fringe-mode '(left-only))

(setq display-time-day-and-date 1)
(setq display-time-24hr-format 1)
(setq display-time-format "%d/%m/%Y %H:%M")
(display-time-mode 1)

(setq system-time-locale "C")

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
  (use-package git-gutter
    :hook (prog-mode . git-gutter-mode))
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
(add-hook 'c-mode-hook #'+word-wrap-mode)

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
(add-hook 'java-mode-hook #'+word-wrap-mode)

(setq-default confirm-kill-emacs nil)

(after! org
  (setq org-directory "~/.doom.d/org/")
  (setq org-agenda-files "~/.doom.d/org/agendas.list") ;;If I want to choose files in this file
;(setq org-agenda-files '("~/org/")) ;; If I want to choose files here
)

(after! org
;  (setq org-agenda-files "~/org/agendas.list")
  (setq org-log-done 'time)
  (setq org-todo-keywords '(
			    (sequence "TODO(t)" "WAIT(w)" "IN PROGRESS(i)" "|" "DONE(d)" "ABORTED(a)")
			    (sequence "PROJ(p)" "WAIT(w)" "IN PROGRESS(i)" "|" "FINISHED(s)" "ABORTED(a)")
			    (sequence "CODE(c)" "WAIT(w)" "CODING(i)" "|" "CODED(d)" "ABORTED(a)")
                (sequence "TASK(f)" "WAIT(w)" "IN PROGRESS(i)" "|" "ACCOMPLISHED(d)" "ABORTED(a)")))
  (setq org-todo-keyword-faces
	'(("TODO" . (:foreground "yellow3"))
	  ("PROJ" . (:foreground "yellow3"))
	  ("CODE" . (:foreground "yellow3"))
	  ("TASK" . (:foreground "yellow3"))
	  ("WAIT" . (:foreground "orange"))
	  ("IN PROGRESS" . (:foreground "orange"))
	  ("CODING" . (:foreground "orange"))
	  ("DONE" . (:foreground "green"))
	  ("ABORTED" . org-done)
	  ("FINISHED" . (:foreground "green"))
	  ("CODED" (:foreground "green"))
	  ("ACCOMPLISHED" . (:foreground "green"))))
  (setq calendar-week-start-day 1)
  (setq org-agenda-start-on-weekday 1)
  (setq org-agenda-span 7)
  (setq org-agenda-start-day "+0d")
)

(add-load-path! "~/.doom.d/org-bullets")
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
