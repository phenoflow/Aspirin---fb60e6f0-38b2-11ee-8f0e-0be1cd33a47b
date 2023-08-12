cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  aspirin-p3_p11-dipyridamole---primary:
    run: aspirin-p3_p11-dipyridamole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  aspirin-p3_p11-1625mg---primary:
    run: aspirin-p3_p11-1625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-dipyridamole---primary/output
  aspirin-p3_p11-powder---primary:
    run: aspirin-p3_p11-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-1625mg---primary/output
  aspirin-p3_p11-600mg---primary:
    run: aspirin-p3_p11-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-powder---primary/output
  aspirin-p3_p11-tablet---primary:
    run: aspirin-p3_p11-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-600mg---primary/output
  nuseal-aspirin-p3_p11---primary:
    run: nuseal-aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-tablet---primary/output
  original-aspirin-p3_p11---primary:
    run: original-aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: nuseal-aspirin-p3_p11---primary/output
  aspirin-p3_p11-strength---primary:
    run: aspirin-p3_p11-strength---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: original-aspirin-p3_p11---primary/output
  aspirin-p3_p11-250mg---primary:
    run: aspirin-p3_p11-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-strength---primary/output
  orodispersible-aspirin-p3_p11---primary:
    run: orodispersible-aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-250mg---primary/output
  aspirin-p3_p11-imazin---primary:
    run: aspirin-p3_p11-imazin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: orodispersible-aspirin-p3_p11---primary/output
  aspirin-p3_p11-forte---primary:
    run: aspirin-p3_p11-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-imazin---primary/output
  aspirin-p3_p11-suppository---primary:
    run: aspirin-p3_p11-suppository---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-forte---primary/output
  extra-aspirin-p3_p11---primary:
    run: extra-aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-suppository---primary/output
  aspirin-p3_p11-codeine---primary:
    run: aspirin-p3_p11-codeine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: extra-aspirin-p3_p11---primary/output
  aspirin-p3_p11-alkaseltzer---primary:
    run: aspirin-p3_p11-alkaseltzer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-codeine---primary/output
  aspirin-p3_p11-anadin---primary:
    run: aspirin-p3_p11-anadin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-alkaseltzer---primary/output
  aspirin-p3_p11-450mg---primary:
    run: aspirin-p3_p11-450mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-anadin---primary/output
  aspirin-p3_p11-metoclopramide---primary:
    run: aspirin-p3_p11-metoclopramide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-450mg---primary/output
  aspirin-p3_p11-100mg---primary:
    run: aspirin-p3_p11-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-metoclopramide---primary/output
  aspirin-p3_p11-400mg---primary:
    run: aspirin-p3_p11-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-100mg---primary/output
  aspirin-p3_p11-771mg---primary:
    run: aspirin-p3_p11-771mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-400mg---primary/output
  aspirin-p3_p11-gastroresistant---primary:
    run: aspirin-p3_p11-gastroresistant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-771mg---primary/output
  aspirin-p3_p11-micropirin---primary:
    run: aspirin-p3_p11-micropirin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-gastroresistant---primary/output
  aspirin-p3_p11-200mg---primary:
    run: aspirin-p3_p11-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-micropirin---primary/output
  aspirin-p3_p11-cocodaprin---primary:
    run: aspirin-p3_p11-cocodaprin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-200mg---primary/output
  aspirin-p3_p11---primary:
    run: aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-cocodaprin---primary/output
  aspirin-p3_p11-solprin---primary:
    run: aspirin-p3_p11-solprin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11---primary/output
  aspirin-p3_p11-mononitrate---primary:
    run: aspirin-p3_p11-mononitrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-solprin---primary/output
  aspirin-p3_p11-postmi---primary:
    run: aspirin-p3_p11-postmi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-mononitrate---primary/output
  aspirin-p3_p11-modifiedrelease---primary:
    run: aspirin-p3_p11-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-postmi---primary/output
  aspirin-p3_p11-325mg---primary:
    run: aspirin-p3_p11-325mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-modifiedrelease---primary/output
  aspirin-p3_p11-300mg---primary:
    run: aspirin-p3_p11-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-325mg---primary/output
  aspirin-p3_p11-safapryn---primary:
    run: aspirin-p3_p11-safapryn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-300mg---primary/output
  clear-aspirin-p3_p11---primary:
    run: clear-aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-safapryn---primary/output
  aspirin-p3_p11-caprin---primary:
    run: aspirin-p3_p11-caprin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: clear-aspirin-p3_p11---primary/output
  aspirin-p3_p11-phosphate---primary:
    run: aspirin-p3_p11-phosphate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-caprin---primary/output
  aspirin-p3_p11-133mg---primary:
    run: aspirin-p3_p11-133mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-phosphate---primary/output
  aspirin-p3_p11-aspro---primary:
    run: aspirin-p3_p11-aspro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-133mg---primary/output
  aspirin-p3_p11-glycine---primary:
    run: aspirin-p3_p11-glycine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-aspro---primary/output
  aspirin-p3_p11-500mg---primary:
    run: aspirin-p3_p11-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-glycine---primary/output
  aspirin-p3_p11-sachet---primary:
    run: aspirin-p3_p11-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-500mg---primary/output
  aspirin-p3_p11-paracetamol---primary:
    run: aspirin-p3_p11-paracetamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-sachet---primary/output
  aspirin-p3_p11-migravess---primary:
    run: aspirin-p3_p11-migravess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-paracetamol---primary/output
  aspirin-p3_p11-aloxiprin---primary:
    run: aspirin-p3_p11-aloxiprin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-migravess---primary/output
  effervescent-aspirin-p3_p11---primary:
    run: effervescent-aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-aloxiprin---primary/output
  aspirin-p3_p11-soluble---primary:
    run: aspirin-p3_p11-soluble---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: effervescent-aspirin-p3_p11---primary/output
  aspirin-p3_p11-retard---primary:
    run: aspirin-p3_p11-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-soluble---primary/output
  generic-aspirin-p3_p11---primary:
    run: generic-aspirin-p3_p11---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-retard---primary/output
  aspirin-p3_p11-sugar---primary:
    run: aspirin-p3_p11-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: generic-aspirin-p3_p11---primary/output
  aspirin-p3_p11-disprin---primary:
    run: aspirin-p3_p11-disprin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-sugar---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: aspirin-p3_p11-disprin---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
