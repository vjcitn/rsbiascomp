setup_wgc = function() {
 data(ilgr_fData_gcc)
 require(seqc)
 require(Biobase)
 ilgr = seqc.eSet("gene", "refseq", "ILM")
 ilgr = ilgr[ rownames(ilgr_fData_gcc), ]
 fData(ilgr) = data.frame(fData(ilgr), GCContent=ilgr_fData_gcc$GCContent)
 ilgr
}
