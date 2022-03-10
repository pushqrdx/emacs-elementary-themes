;;; fargo-theme.el --- A cosmic Emacs theme -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme fargo
  :background "#0d1117"
  :foreground "#f2f2f3"
  :error "#ee4444"
  :warning "#e6a219"
  :success "#3aba21"
  :info "#83a5d2"
  :keyword "#ff7b72"
  :type "#988f81"
  :constant "#88b7dd"
  ;; ansi colors
  :ansi-color-black "#0d0d0d"
  :ansi-color-red "#ee4444"
  :ansi-color-green "#3aba21"
  :ansi-color-yellow "#e6a219"
  :ansi-color-blue "#83a5d2"
  :ansi-color-magenta "#f28cd9"
  :ansi-color-cyan "#5cd6b6"
  :ansi-color-white "#fafafa")

(provide-theme 'fargo)
