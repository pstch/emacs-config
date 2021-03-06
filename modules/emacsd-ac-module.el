;;; emacsd-ac-module.el --- Emacs.d modules.
;;
;; Author: Sliim <sliim@mailoo.org>
;; Version: 1.0.0
;; Keywords: emacs.d modules

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Personal Emacs.d Auto-complete module

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'auto-complete)
(global-auto-complete-mode t)           ;enable global-mode
(make-local-variable 'ac-sources)
(setq ac-auto-start nil)                ;not automatically start
(setq ac-dwim 3)                        ;Do what i mean
(setq ac-override-local-map nil)        ;don't override local map
(setq ac-comphist-file (expand-file-name "ac-comphist.dat" emacsd-var-dir))
(setq ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-words-in-buffer))
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (setq ac-sources '(ac-source-abbrev
                               ac-source-words-in-buffer
                               ac-source-symbols))))

(provide 'emacsd-ac-module)

;;; emacsd-ac-module.el ends here
