;;; kombat-theme.el --- A wombat reincarnation -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme kombat
  :background "#1f1f1f"
  :foreground "#f6f3e8"
  :error "#ff6666"
  :warning "#ccaa8f"
  :success "#36cf17"
  :info "#5bbbca"
  :keyword "#f28cc8"
  :type "#92a65e"
  :constant "#f0a875"
  ;; ansi colors
  :ansi-color-black "#0d0d0d"
  :ansi-color-red "#eb5555"
  :ansi-color-green "#63e649"
  :ansi-color-yellow "#ccaa8f"
  :ansi-color-blue "#5bbbca"
  :ansi-color-magenta "#f28cc8"
  :ansi-color-cyan "#5ea693"
  :ansi-color-white "#fcfbf8")

(provide-theme 'kombat)
