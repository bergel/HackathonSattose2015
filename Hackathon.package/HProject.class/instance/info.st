accessing
info

"self versions size.
((self classes select: #isCoverageHasDecreased) size / self classes size) round: 2.
((self classes select: #isCoverageHasIncreased) size / self classes size) round: 2.
((self classes select: #isCoverageHasIncreased) size / self classes size) round: 2.
"