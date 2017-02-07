# TestResizingCell

Even when tableView.rowHeight is set to UITableViewAutomaticDimension, a cell won't expand when part of a stackView is unhidden. The automatic dimensioning feature works while reloading data.

The "withReload" branch uses the didSelectRowAt delegate function to expand the cell and reload it, so the user sees an animation of the row, unhiding the rest of the cell.
