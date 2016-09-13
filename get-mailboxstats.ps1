Get-MailboxStatistics -server scdexvs01 | Sort-Object T
otalItemSize -Descending | ft DisplayName,@{ expression={$_.TotalItemSize.Value.
ToKB()}},ItemCount | export-csv d:\reports\mailboxsizes.csv
