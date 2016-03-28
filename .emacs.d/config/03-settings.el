(add-to-list 'auto-mode-alist '("\\.txt$" . text-mode))

;;;(setq initial-major-mode 'org-mode)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(xterm-mouse-mode)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq case-fold-search t)

(setq visible-bell t)

(setq echo-keystrokes 0.4)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq-default c-basic-offset 4
	          c-indent-level 4
	          indent-tabs-mode nil)

;(defun compilation-exit-autoclose (status code msg)
;  ;; If M-x compile exists with a 0
;  (when (and (eq status 'exit) (zerop code) (not (string= mode-name "Ack")))
;    ;; then bury the *compilation* buffer, so that C-x b doesn't go there
;    (bury-buffer)
;    ;; and delete the *compilation* window
;    (delete-window (get-buffer-window (get-buffer "*compilation*"))))
;  ;; Always return the anticipated result of compilation-exit-message-function
;  (cons msg code))
;(setq compilation-exit-message-function 'compilation-exit-autoclose)

(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)
(global-set-key (kbd "<select>") 'move-end-of-line)

(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<left>") 'windmove-left)

(global-set-key (kbd "<mouse-4>") 'scroll-down)
(global-set-key (kbd "<mouse-5>") 'scroll-up)
