(load-file "out/8cc.c.eir.el")
(setq 8cc-main elvm-main)
(load-file "out/elc.c.eir.el")
(setq elc-main elvm-main)

(defun putchar (c)
  (setq elvm-output (concat elvm-output (char-to-string c))))
(defun 8cc ()
  (interactive)
  (setq elvm-input (buffer-string))
  (setq elvm-output "")
  (funcall 8cc-main)
  (switch-to-buffer "*8cc output*")
  (insert-string elvm-output))
(defun elc ()
  (interactive)
  (setq elvm-input (buffer-string))
  (setq elvm-output "")
  (funcall elc-main)
  (switch-to-buffer "*elc output*")
  (insert-string elvm-output))

(defun elvm-main ()
  (interactive)
  (setq elvm-output "")
  (funcall elvm-main)
  (switch-to-buffer "*elvm output*")
  (insert-string elvm-output))
