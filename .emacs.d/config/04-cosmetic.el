(menu-bar-mode -1)

(setq inhibit-splash-screen t
      initial-scratch-message nil)

(line-number-mode 1)
(column-number-mode 1)

(global-hl-line-mode 1)

(use-package powerline
  :init
  (progn
  	(use-package airline-themes))
  :config
  (progn
    (load-theme 'airline-murmur 'no-confirm)))

(use-package molokai-theme
  :init (setq color-theme-is-global t))
  :config (progn (load-theme 'molokai 'no-confirm))

(add-to-list 'default-frame-alist '(background-color . "#000000"))
