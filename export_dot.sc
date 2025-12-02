// pdg_enrich.sc
val source = ujson.read(os.read(os.pwd / "params.json"))
val cpgPath = source("cpgPath").str

println(s"📂 Importing: $cpgPath")
importCpg(cpgPath)

println("⚙️ Running OSS Dataflow overlay...")
run.ossdataflow

println("💾 Saving enriched CPG")
save(0)

println("✅ Enrichment done")
