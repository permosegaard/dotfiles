(setq socks-timeout 5)
(setq socks-username "")
(setq socks-password "")
(setq socks-server-host (concat (getenv "SOCKSER_PROXY") ".proxies.acionconsultancy.int"))
(setq socks-server (list "Default server" socks-server-host 1080 5))
(setq url-gateway-local-host-regexp "^\\(localhost\\|127\\.0\\.0\\.*\\)")

(setq url-gateway-method 'socks)
