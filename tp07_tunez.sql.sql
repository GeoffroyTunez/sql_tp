DELETE COMPO
FROM COMPO
JOIN BON ON COMPO.ID_BON = BON.ID
WHERE MONTH(BON.DATE_CMDE) = 4 AND YEAR(BON.DATE_CMDE) = 2019;


DELETE BON
FROM BON
WHERE MONTH(BON.DATE_CMDE) = 4 AND YEAR(BON.DATE_CMDE) = 2019;

