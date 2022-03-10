;;; mutant-theme.el --- An Emacs mutation -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme mutant
  :background "#000000"
  :foreground "#e5e5e6"
  :error "#ce4f3b"
  :warning "#bf9f40"
  :success "#81bd75"
  :info "#7c9dbd"
  :keyword "#d65c5c"
  :type "#d6a35c"
  :constant "#85a06a"
  ;; ansi colors
  :ansi-color-black "#0d0d0d"
  :ansi-color-red "#ce4f3b"
  :ansi-color-green "#81bd75"
  :ansi-color-yellow "#bf9f40"
  :ansi-color-blue "#7c9dbd"
  :ansi-color-magenta "#f28cc8"
  :ansi-color-cyan "#50d3cd"
  :ansi-color-white "#f2f2f3")

(provide-theme 'mutant)
