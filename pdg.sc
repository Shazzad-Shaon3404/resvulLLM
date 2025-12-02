import java.io.File
import java.nio.file.{Files, Paths, StandardCopyOption}

val inputDir = "/mnt/c/Users/user01/PycharmProjects/PythonProject2/joern_outputs"
val outputDir = "/mnt/c/Users/user01/PycharmProjects/PythonProject2/joern_cpg_enriched"
val totalSamples = 50

new File(outputDir).mkdirs()

for (i <- 0 until totalSamples) {
  val sampleName = s"sample_$i"
  val inputCpgPath = s"$inputDir/$sampleName/cpg.bin"
  val sampleOutDir = s"$outputDir/$sampleName"
  new File(sampleOutDir).mkdirs()

  if (!new File(inputCpgPath).exists()) {
    println(s"❌ Missing: $inputCpgPath")
  } else {
    println(s"🔄 Processing: $sampleName")
    importCpg(inputCpgPath)
    run.ossdataflow
    save(0)  // Saves to Joern’s workspace dir

    // Find saved CPG file in workspace
    val wsDir = new File("workspace")
    val enrichedFileOpt = wsDir.listFiles()
      .filter(_.getName.startsWith("cpg.bin"))
      .flatMap(f => Option(new File(f, "cpg.bin")))
      .find(_.exists())

    enrichedFileOpt match {
      case Some(enrichedCpg) =>
        val targetPath = Paths.get(s"$sampleOutDir/cpg.bin")
        Files.copy(enrichedCpg.toPath, targetPath, StandardCopyOption.REPLACE_EXISTING)
        println(s"✅ Saved enriched CPG → $targetPath\n")
      case None =>
        println(s"⚠️  No enriched CPG found for $sampleName\n")
    }
  }
}
