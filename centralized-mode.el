;; centralized-mode.el --- a mode to add margins to your emacs window

;; Copyright  (C)  2019  Marcelo Toledo <marcelo@marcelotoledo.com>

;; Author: Marcelo Toledo <marcelo@marcelotoledo.com>
;; Maintainer: Marcelo Toledo <marcelo@marcelotoledo.com>
;; URL: https://github.com/marcelotoledo/centralized-mode
;; Created: 03 Feb 2019
;; Version: 1.0

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
;; 02111-1307, USA.

;; Code:

(defcustom centralized-margin
  110
  "Desired window margin."
  :type '(integer)
  :group 'centralized-mode)

(defun centralized--disable ()
  (set-window-margins nil nil))

(defun centralized--enable ()
  (set-window-margins nil nil)
  (let* ((current-size (window-max-chars-per-line))
         (new-size (/ (- current-size centralized-margin) 2)))
    (set-window-margins (get-buffer-window) new-size new-size)))

;;;###autoload
(define-minor-mode centralized-mode
  "Centralize the content of your editor."
  :init-value nil
  :lighter " Cent"
  (if (not centralized-mode)
      (centralized--disable)
    (centralized--enable)))

(provide 'centralized-mode)
