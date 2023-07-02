;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(use-modules (gnu home)
             (gnu packages)
             (gnu services)
             (guix gexp)
             (gnu home services shells))

(home-environment
  ;; Below is the list of packages that will show up in your
  ;; Home profile, under ~/.guix-home/profile.
  (packages (specifications->packages (list "emacs-pdf-tools"
                                            "emacs-keycast"
                                            "emacs-doom-modeline"
                                            "emacs-ef-themes"
                                            "emacs-doom-themes"
                                            "emacs-no-littering"
                                            "emacs-which-key"
                                            "emacs-undo-fu-session"
                                            "emacs-undo-fu"
                                            "emacs-async"
                                            "openssh"
                                            "node"
                                            "emacs-guix"
                                            "emacs-geiser-guile"
                                            "emacs-geiser"
                                            "emacs-popper"
                                            "emacs-embark"
                                            "emacs-consult-dir"
                                            "emacs-consult"
                                            "emacs-corfu"
                                            "emacs-systemd-mode"
                                            "emacs-yaml-mode"
                                            "emacs-nix-mode"
                                            "emacs-dockerfile-mode"
                                            "emacs-docker"
                                            "emacs-vterm-toggle"
                                            "emacs-direnv"
                                            "emacs-editorconfig"
                                            "emacs-rust-mode"
                                            "emacs-flycheck"
                                            "emacs-lsp-ui"
                                            "emacs-lsp-mode"
                                            "emacs-evil-commentary"
                                            "emacs-evil-collection"
                                            "emacs-evil"
                                            "emacs-toc-org"
                                            "emacs-org-roam-ui"
                                            "emacs-org-roam"
                                            "emacs-org-bullets"
                                            "emacs-org-modern"
                                            "emacs-evil-org"
                                            "emacs-org-appear"
                                            "emacs-general"
                                            "emacs-ws-butler"
                                            "emacs-rainbow-delimiters"
                                            "emacs-smartparens"
                                            "emacs-magit"
                                            "emacs-marginalia"
                                            "emacs-orderless"
                                            "emacs-vertico"
                                            "perl"
                                            "libtool"
                                            "ripgrep"
                                            "emacs-vterm"
                                            "firefox"
                                            "glibc-locales"
                                            "cmake"
                                            "gcc-toolchain@11"
                                            "setxkbmap"
                                            "direnv"
                                            "font-iosevka"
                                            "make"
                                            "vim"
                                            "git"
                                            "emacs")))

  ;; Below is the list of Home services.  To search for available
  ;; services, run 'guix home search KEYWORD' in a terminal.
  (services
   (list (service home-bash-service-type
                  (home-bash-configuration
                   (aliases '(("grep" . "grep --color=auto") ("ll" . "ls -l")
                              ("ls" . "ls -p --color=auto")))
                   (bashrc (list (local-file ".bashrc" "bashrc")))
                   (bash-profile (list (local-file ".bash_profile"
                                                   "bash_profile"))))))))
