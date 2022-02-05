;;Take all the screen
;;(add-to-list 'initial-frame-alist '(fullscreen . fullboth))
;;Take all the screen but with dock & title bar
;;(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq user-full-name "bzalugas"
      user-mail-address "bastien.zalugas@hotmail.fr")

(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

(set-language-environment "UTF-8")
;; Column indicator
;(setq display-fill-column-indicator-column 80)
;(setq display-fill-column-indicator-character ?\|)
;(display-fill-column-indicator-mode 1)
;; Default tabs & indentation
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default c-basic-offset 4)
(global-linum-mode 1)
;;(setq-default line-number-mode t)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
	  		  				 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
