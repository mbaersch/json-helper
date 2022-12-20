___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "JSON Helper",
  "description": "Parses a valid JSON string and returns an array or object or stringifies arrays or objects",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "jsonAction",
    "displayName": "Action",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "stringify",
        "displayValue": "JSON.stringify()"
      },
      {
        "value": "parse",
        "displayValue": "JSON.parse()"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "stringInput",
    "displayName": "JSON Input String",
    "simpleValueType": true,
    "lineCount": 10,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Enter a valid JSON string (with quoted key names) for an object or array of objects.",
    "enablingConditions": [
      {
        "paramName": "jsonAction",
        "paramValue": "parse",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "jsonInput",
    "displayName": "Array / Object Variable",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Define a variable containing the array or object to stringify.",
    "enablingConditions": [
      {
        "paramName": "jsonAction",
        "paramValue": "stringify",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

return data.jsonAction === "parse" ? 
  require("JSON").parse(data.stringInput) : 
  require("JSON").stringify(data.jsonInput);


___TESTS___

scenarios: []


___NOTES___

Created on 20.12.2022, 21:15:30


