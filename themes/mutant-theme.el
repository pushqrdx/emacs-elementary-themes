;;; mutant-theme.el --- An Emacs mutation -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme mutant
  :background "#000000"
  :foreground "#E5E5E6"
  :error "#CE4F3B"
  :warning "#BF9F40"
  :success "#81BD75"
  :info "#7C9DBD"
  :keyword "#D65C5C"
  :type "#D6A35C"
  :constant "#85A06A")

(provide-theme 'mutant)
