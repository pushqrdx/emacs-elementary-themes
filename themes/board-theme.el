;;; board-theme.el --- Back to the Basics -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme board
  :background "#051B2E"
  :foreground "#ffffff"
  :error "#ff8080"
  :warning "#ffcc00"
  :success "#63eb47"
  :info "#8CA8C4"
  :keyword "#DD613C"
  :type "#DDB43C"
  :constant "#8ACC33")

(provide-theme 'board)
