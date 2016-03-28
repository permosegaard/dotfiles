(require 'cl)
(require 'package)

(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/")) ; borken ssl over socks :(

(setq package-enable-at-startup nil)
(package-initialize nil)

;(package-refresh-contents) ; repo updates here

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package projectile
:config
(use-package perspective)
(use-package helm))

(use-package discover
:config
(global-discover-mode 1))

(use-package yafolding)

(use-package yasnippet  ; must go above auto-complete
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1))

(use-package company
  :diminish company-mode
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1))
;  (use-package company-quickhelp
;    :init
;    (use-package pos-tip)
;    :config
;    (company-quickhelp-mode 1)))
(defun company-complete-common-or-previous-cycle ()
  "Insert the common part of all candidates, or select the next one."
  (interactive)
  (when (company-manual-begin)
    (let ((tick (buffer-chars-modified-tick)))
      (call-interactively 'company-complete-common)
      (when (eq tick (buffer-chars-modified-tick))
        (let ((company-selection-wrap-around t))
          (call-interactively 'company-select-previous))))))
(define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
(define-key company-active-map (kbd "<backtab>") 'company-complete-common-or-previous-cycle)
;(use-package auto-complete
;  :diminish auto-complete-mode
;  :config
;  (ac-config-default)
;  (global-auto-complete-mode t)
;;  (ac-linum-workaround)
;  (ac-set-trigger-key "TAB")
;  (ac-set-trigger-key "<tab>"))

(use-package whitespace
  :diminish (global-whitespace-mode whitespace-mode)
  :init
  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  :config
  (progn
    (global-whitespace-mode 1)
    (setq whitespace-global-modes '(not org-mode eshell-mode shell-mode emacs-lisp-mode list-mode))
    (setq whitespace-style '(face newline-mark))
    (setq whitespace-display-mappings '((newline-mark 10 [8617 10])))))

(use-package dtrt-indent
  :commands dtrt-indent-mode
  :config
  (dtrt-indent-mode 1))

(use-package flycheck
  :diminish flycheck-mode
  :config
  (global-flycheck-mode))

(use-package rainbow-delimiters)

(use-package linum
  :config
  (global-linum-mode 1)
  (use-package linum-relative
  :config
  (setq linum-relative-current-symbol ">")
  (setq linum-relative-format "%3s ")
  (linum-relative-toggle)
  ))

(use-package indent-guide
  :diminish indent-guide-mode
  :config
  (indent-guide-global-mode)
  (setq indent-guide-delay 0.1))

(use-package magit
:config
(use-package git-gutter+
  :config
  (global-git-gutter+-mode)))
