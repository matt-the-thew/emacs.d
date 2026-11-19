;; Hello, future Matt. Welcome back to our EMACS configuration file.  -*- lexical-binding: t; -*-
;; Edited by Matthew Morton, last edited November 2026

;;; File configuration
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

;;; Appearance
;; startup message, menu bar/tool bar

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1 )

(setq inhibit-startup-screen t)

;; set up line numbers
(global-display-line-numbers-mode t)

;; set custome font and font-size
(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 200)

;; colorscheme
(setq customize-theme "tsdh-light")

;; turn off that damn bell
(setq ring-bell-function 'ignore)

;;; Keybinds

;; stole this for Torvald's config

;; Function keys (unshifted) 
;; f1  f2  f3  f4  f5  f6  f7  f8  f9  f10
;; FN; FN< FN= FN> FN? FN@ FNA FNB FNC
;; Then he binds help and exit-emacs to FN, FND

(keymap-global-set "<f1>" 'save-buffers-kill-terminal)
(keymap-global-set "<f10>" 'help-for-help)

;;; Editor

;; c editing mode
(setq c-basic-offset 4
      c-default-style '((java-mode . "java")
			(awk-mode . "awk")
			(other . "bsd")))

(tab-bar-mode)
(tab-line-mode)

