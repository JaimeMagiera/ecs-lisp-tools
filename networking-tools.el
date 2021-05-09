(defun ip-to-subnet ()
	"Convert a single IP address into a subnet. Currently, supports /24 subnets."
	(interactive)
	(while (re-search-forward "\\.[0-9]\\{1,3\\}" nil t 3)
		(replace-match ".0/24"))
)

