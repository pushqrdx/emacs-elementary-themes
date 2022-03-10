;;; fargo-theme.el --- A cosmic Emacs theme -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme fargo
  :background "#0D1117"
  :foreground "#F2F2F3"
  :error "#EE4444"
  :warning "#E6A219"
  :success "#3ABA21"
  :info "#83A5D2"
  :keyword "#ff7b72"
  :type "#988F81"
  :constant "#88B7DD")

(provide-theme 'fargo)
