{
	"contents": {
		"b65a2fbc-8ad7-4939-89cc-aff59be03fdd": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboard.onboard",
			"subject": "onboard",
			"name": "onboard",
			"documentation": "onboard",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"67aae4fe-e0d7-4981-9d18-be32117f4117": {
					"name": "Assign and Approve Equipment"
				},
				"03ab518a-db13-4d4c-9a46-6953e55f2c1b": {
					"name": "ExclusiveGateway1"
				},
				"dcb86a03-86e1-45b3-8b01-04d332a4c529": {
					"name": "ServiceTask1"
				},
				"3a2f05a2-b958-415c-a52b-dd1e7f91400e": {
					"name": "ScriptTask1"
				},
				"c2ff1a31-0357-4a37-9b4f-987e31a14dc7": {
					"name": "ParallelGateway1"
				}
			},
			"sequenceFlows": {
				"6389ee2f-e346-4e7d-94f9-840968339ab0": {
					"name": "SequenceFlow2"
				},
				"5ba64774-65a8-4d74-afde-871ae365edc4": {
					"name": "SequenceFlow3"
				},
				"b98b109e-bb94-46d6-8c32-d789aecb1842": {
					"name": "SequenceFlow5"
				},
				"acbeec93-2c75-4432-b0f7-4173986d3d0d": {
					"name": "SequenceFlow6"
				},
				"fa49641c-aa6b-4205-9213-8de5d4fbc8e8": {
					"name": "SequenceFlow7"
				},
				"89d46285-8d13-42eb-9faa-3624d020fd83": {
					"name": "SequenceFlow8"
				},
				"f15b0c81-6d33-4727-ac5a-bf36431417ff": {
					"name": "SequenceFlow9"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"67aae4fe-e0d7-4981-9d18-be32117f4117": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Assign and Approve Equipment for ${context.empData.firstName} ${context.empData.lastName}",
			"description": "The manager assigns and approves equipment and relocation of the newly onboarded employee",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Assign and Approve Equipment"
		},
		"6389ee2f-e346-4e7d-94f9-840968339ab0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "67aae4fe-e0d7-4981-9d18-be32117f4117"
		},
		"5ba64774-65a8-4d74-afde-871ae365edc4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "67aae4fe-e0d7-4981-9d18-be32117f4117",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"0193184d-aab6-4904-8927-a5ce267bbe20": {},
				"a2c4054d-664d-40e1-bd46-76631655d65b": {},
				"627088ad-ac14-481b-8c64-9c52d6680034": {},
				"e882bb0c-b869-4109-bf6c-1ebcd6e8b8a4": {},
				"03e4859a-3887-47d1-b745-1c43acbf3ee1": {},
				"0e389850-d408-48b9-9d3f-7057ac3c81fa": {},
				"23efad7d-ec72-4ab0-9eb4-e48599beae24": {},
				"5a22d0b0-550f-48a3-92d7-58833f4fab6b": {},
				"720b5f0f-05b4-4f0b-b746-5ac0bb1a2414": {},
				"0beed109-69dc-4ef0-887b-5faf646182a1": {},
				"9a76e486-4a52-48d4-b494-69055df3d842": {},
				"cc37d511-73a1-4dc4-94d6-6311b307121a": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 71,
			"y": 114,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 639,
			"y": 275,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"0193184d-aab6-4904-8927-a5ce267bbe20": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 327,
			"y": 178,
			"width": 100,
			"height": 60,
			"object": "67aae4fe-e0d7-4981-9d18-be32117f4117"
		},
		"a2c4054d-664d-40e1-bd46-76631655d65b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "87,133.75 215.03411865234375,133.75 215.03411865234375,211.75 365,211.75",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "0193184d-aab6-4904-8927-a5ce267bbe20",
			"object": "6389ee2f-e346-4e7d-94f9-840968339ab0"
		},
		"627088ad-ac14-481b-8c64-9c52d6680034": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "359,215.25 533.25,215.25 533.25,296.25 656.5,296.25",
			"sourceSymbol": "0193184d-aab6-4904-8927-a5ce267bbe20",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "5ba64774-65a8-4d74-afde-871ae365edc4"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 9,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 2,
			"parallelgateway": 1
		},
		"03ab518a-db13-4d4c-9a46-6953e55f2c1b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1"
		},
		"e882bb0c-b869-4109-bf6c-1ebcd6e8b8a4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 285,
			"y": 25,
			"object": "03ab518a-db13-4d4c-9a46-6953e55f2c1b"
		},
		"dcb86a03-86e1-45b3-8b01-04d332a4c529": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"03e4859a-3887-47d1-b745-1c43acbf3ee1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 377,
			"y": 16,
			"width": 100,
			"height": 60,
			"object": "dcb86a03-86e1-45b3-8b01-04d332a4c529"
		},
		"b98b109e-bb94-46d6-8c32-d789aecb1842": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "03ab518a-db13-4d4c-9a46-6953e55f2c1b",
			"targetRef": "dcb86a03-86e1-45b3-8b01-04d332a4c529"
		},
		"0e389850-d408-48b9-9d3f-7057ac3c81fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "306,46 427,46",
			"sourceSymbol": "e882bb0c-b869-4109-bf6c-1ebcd6e8b8a4",
			"targetSymbol": "03e4859a-3887-47d1-b745-1c43acbf3ee1",
			"object": "b98b109e-bb94-46d6-8c32-d789aecb1842"
		},
		"3a2f05a2-b958-415c-a52b-dd1e7f91400e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"23efad7d-ec72-4ab0-9eb4-e48599beae24": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 527,
			"y": 16,
			"width": 100,
			"height": 60,
			"object": "3a2f05a2-b958-415c-a52b-dd1e7f91400e"
		},
		"acbeec93-2c75-4432-b0f7-4173986d3d0d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "dcb86a03-86e1-45b3-8b01-04d332a4c529",
			"targetRef": "3a2f05a2-b958-415c-a52b-dd1e7f91400e"
		},
		"5a22d0b0-550f-48a3-92d7-58833f4fab6b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "427,46 577,46",
			"sourceSymbol": "03e4859a-3887-47d1-b745-1c43acbf3ee1",
			"targetSymbol": "23efad7d-ec72-4ab0-9eb4-e48599beae24",
			"object": "acbeec93-2c75-4432-b0f7-4173986d3d0d"
		},
		"c2ff1a31-0357-4a37-9b4f-987e31a14dc7": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "ParallelGateway1"
		},
		"720b5f0f-05b4-4f0b-b746-5ac0bb1a2414": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 764.5,
			"y": 157,
			"object": "c2ff1a31-0357-4a37-9b4f-987e31a14dc7"
		},
		"fa49641c-aa6b-4205-9213-8de5d4fbc8e8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "3a2f05a2-b958-415c-a52b-dd1e7f91400e",
			"targetRef": "c2ff1a31-0357-4a37-9b4f-987e31a14dc7"
		},
		"0beed109-69dc-4ef0-887b-5faf646182a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "577,46 696,46 696,178 785.5,178",
			"sourceSymbol": "23efad7d-ec72-4ab0-9eb4-e48599beae24",
			"targetSymbol": "720b5f0f-05b4-4f0b-b746-5ac0bb1a2414",
			"object": "fa49641c-aa6b-4205-9213-8de5d4fbc8e8"
		},
		"89d46285-8d13-42eb-9faa-3624d020fd83": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "c2ff1a31-0357-4a37-9b4f-987e31a14dc7",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"9a76e486-4a52-48d4-b494-69055df3d842": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "791.5,180 719.25,180 719.25,286 656,286",
			"sourceSymbol": "720b5f0f-05b4-4f0b-b746-5ac0bb1a2414",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "89d46285-8d13-42eb-9faa-3624d020fd83"
		},
		"f15b0c81-6d33-4727-ac5a-bf36431417ff": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "c2ff1a31-0357-4a37-9b4f-987e31a14dc7",
			"targetRef": "67aae4fe-e0d7-4981-9d18-be32117f4117"
		},
		"cc37d511-73a1-4dc4-94d6-6311b307121a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "785.5,178 595.75,178 595.75,197 397,197",
			"sourceSymbol": "720b5f0f-05b4-4f0b-b746-5ac0bb1a2414",
			"targetSymbol": "0193184d-aab6-4904-8927-a5ce267bbe20",
			"object": "f15b0c81-6d33-4727-ac5a-bf36431417ff"
		}
	}
}