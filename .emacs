;;desabilitar el scroll bar, toolbar y menu bar
;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(custom-set-variables
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(make-backup-files nil)
 '(mouse-wheel-mode t nil (mwheel))
 '(show-paren-mode t nil (paren))
 '(standard-indent 4)
 '(transient-mark-mode t)
 '(visible-bell t)
)
;; no autograbe
(setq auto-save-default nil)

;; this is me
(setq user-mail-address "naruse@gmail.com")
(setq user-full-name "Juan Sebastian Muñoz")


;;Color themes
(add-to-list 'load-path "/Users/naruse/.emacs.d/color-theme-6.6.0/color-theme.el")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-dark-laptop)))


(line-number-mode 1)
(column-number-mode 1)

(require 'cc-mode)

(setq inhibit-startup-message t)

(global-set-key [(meta g)] 'goto-line)
(define-key global-map "\M-4" 'query-replace)

;; Otras cosas

(setq search-highlight t)
(setq query-replace-highlight t)

(setq default-fill-column 77)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'c++-mode-hook 'turn-on-auto-fill)
(add-hook 'c-mode-hook 'turn-on-auto-fill)

(setq next-line-add-newlines nil)
(setq c-tab-always-indent "other")

(setq-default indent-tabs-mode nil)     ;; Espacios en vez de tabuladores

(global-font-lock-mode t)
(setq font-lock-maximum-size nil)

(define-key c-mode-map "\C-m" 'newline-and-indent)
(define-key c++-mode-map "\C-m" 'newline-and-indent)

(global-set-key [f3] 'shell)
(global-set-key [f5] 'compile)

