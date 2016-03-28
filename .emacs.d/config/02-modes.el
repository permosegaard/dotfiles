(use-package evil
  :init
  (use-package undo-tree 
  :diminish undo-tree-mode)
  :config
  (progn
  	(evil-mode 1)
    (define-key evil-normal-state-map [escape] 'keyboard-quit)
    (define-key evil-visual-state-map [escape] 'keyboard-quit)
    (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
    (evil-set-initial-state 'git-commit-mode 'insert))
    (defun my-esc (prompt)
     (cond
      ((or (evil-insert-state-p) (evil-normal-state-p) (evil-replace-state-p) (evil-visual-state-p)) [escape])
      (t (kbd "C-g"))))
    (define-key key-translation-map (kbd "C-c") 'my-esc)
    (define-key evil-operator-state-map (kbd "C-c") 'keyboard-quit))

(defun programming_buffer_enter ()
	(yafolding-mode)
;	(yafolding-hide-all)
;    (whitespace-mode)
	(rainbow-delimiters-mode))

(use-package web-mode
  :mode (( "\\.html?$" . web-mode )
         ( "\\.php[345]?$" . web-mode ))
  :config (progn
            (add-hook 'web-mode-hook
                      (lambda ()
                        (setq web-mode-enable-css-colorization t)
                              web-mode-markup-indent-offset 2
                              web-mode-style-padding 2
                              web-mode-script-padding 2
                              web-mode-enable-auto-closing t
                              web-mode-enable-auto-pairing t
                              web-mode-enable-current-element-highlight t
                              web-mode-enable-current-column-highlight t)))
            (add-hook 'web-mode-hook 'programming_buffer_enter))
(use-package js2-mode
  :mode ( "\\.js$" . js2-mode )
  :config
  (add-hook 'js2-mode-hook 'programming_buffer_enter))

(use-package lua-mode
  :mode ( "\\.lua$" . lua-mode )
  :config
  (add-hook 'lua-mode-hook 'programming_buffer_enter))

(use-package python
  :mode ( "\\.py$" . python-mode )
  :init
  (progn
    (defalias 'python2-mode 'python-mode)
    (defalias 'python3-mode 'python-mode))
  :config
  (use-package company-jedi))
;  (use-package anaconda-mode
;  	:diminish anaconda-mode
;    :config
;    (use-package company-anaconda
;      :config
;      (add-to-list 'company-backends 'company-anaconda)))
;  (add-hook 'python-mode-hook 'anaconda-mode))
;  (use-package jedi
;    :config
;    (setq jedi:complete-on-dot t)
;    (jedi:install-server)
;    (add-hook 'python-mode-hook 'jedi:setup)
;    (add-hook 'python-mode-hook 'programming_buffer_enter)))

;;;(use-package php-mode)

(use-package irony
  :mode (( "\\.cpp" . irony-mode )
  		 ( "\\.hpp" . irony-mode ))
  :config
  (add-hook 'irony-mode-hook 'programming_buffer_enter))

(use-package rust-mode
  :mode ( "\\.rs$" . rust-mode )
  :config
  (add-hook 'rust-mode-hook 'programming_buffer_enter))

(use-package markdown-mode
  :mode ( "\\.md$" . markdown-mode ))
