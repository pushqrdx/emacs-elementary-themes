;;; board-theme.el --- Back to the Basics -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme board
  :background "#051b2e"
  :foreground "#ffffff"
  :error "#ff8080"
  :warning "#ffcc00"
  :success "#63eb47"
  :info "#8ca8c4"
  :keyword "#dd613c"
  :type "#ddb43c"
  :constant "#8acc33"
  ;; ansi colors
  :ansi-color-black "#030d17"
  :ansi-color-red "#ff8080"
  :ansi-color-green "#63eb47"
  :ansi-color-yellow "#ffcc00"
  :ansi-color-blue "#8ca8c4"
  :ansi-color-magenta "#f28cc8"
  :ansi-color-cyan "#79D2BB"
  :ansi-color-white "#ffffff")

(provide-theme 'board)
