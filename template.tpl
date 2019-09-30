___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "displayName": "Coveo Analytics",
  "description": "The Coveo Analytics template allows you to log events to Coveo Usage Analytics.",
  "categories": ["ANALYTICS", "PERSONALIZATION", "SESSION_RECORDING"],
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFQSURBVFhHxZfRTcMwEIbPLTxUCkJs0IcwABMAm8Ai2GaCsEE6CWUD3qFS2KColXhoKnMBH2qpk8Z2bH9SlPik6P9zvjs5sOK5wOsGEsHWPFf6cTaGjZjIqvpdx2HHABHXiMEAouBTMShqqIsLWS11NAhmA0QEIyN9N8PgnAHwUzh5XfPLOx0dlO4MHPKBr4hMvpV67Y2tAeIFXxJn8n2u1864GiC8jXTXwHGusUaesT7KLz6d6pgVvhn4h/0MGdgAYtm6wxsgehrxrYF2es6QcBk4xDhDYhog9lo33Ba0s/fBETOgKpQW2eNipgM/RDBgFiZCbsFSofAGtldt4g0hMtAIFzWrnxIMIlWOYSsTjGJ7YcK3Bubo/jaTi3vXQ6xrBhphmeBA0t1SLvQ0MLwwcawGevWyD20ZsOplHwwG3FvKhR0DcYX/WD3kPN3vOcA3SzrpBQgaw0IAAAAASUVORK5CYII=",
    "displayName": "",
    "id": "brand_dummy"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "macrosInSelect": false,
    "selectItems": [
      {
        "displayValue": "Log custom event",
        "value": "custom"
      },
      {
        "displayValue": "Log page view event",
        "value": "view"
      },
      {
        "displayValue": "Log product detail view event",
        "value": "detailView"
      },
      {
        "value": "addToCart",
        "displayValue": "Log add to cart event"
      },
      {
        "displayValue": "Initialize the Coveo Analytics script",
        "value": "load"
      }
    ],
    "displayName": "Action",
    "simpleValueType": true,
    "name": "eventType",
    "type": "SELECT",
    "help": "The action to perform when the tag is triggered (see <a href=\"https://docs.coveo.com/en/2926/\">Logging Coveo Events From Google Tag Manager</a>)."
  },
  {
    "name": "Event Description",
    "type": "GROUP",
    "subParams": [
      {
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "custom"
          }
        ],
        "displayName": "Custom events can be leveraged in Coveo UA reports and by Coveo ML Event Recommendation models.",
        "name": "Custom Event Type Description",
        "type": "LABEL"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "load"
          }
        ],
        "displayName": "This action should be performed once per page before logging events to Coveo Usage Analytics (see <a href=\"https://docs.coveo.com/en/2926/#loading-the-coveo-analytics-script\">Loading the Coveo Analytics Script</a>).",
        "name": "Load Event Type Description",
        "type": "LABEL"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "view"
          }
        ],
        "displayName": "Page view events are leveraged by Coveo ML Event Recommendation models (see <a href=\"https://docs.coveo.com/en/1886/\">Coveo Machine Learning Event Recommendations Deployment Overview</a>).",
        "name": "View Event Type Description",
        "type": "LABEL"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "detailView"
          }
        ],
        "displayName": "Product detail view events are leveraged by Coveo ML Commerce Recommendation models.",
        "name": "Detail View Event Type Description",
        "type": "LABEL"
      },
      {
        "type": "LABEL",
        "name": "Add To Cart Event Type Description",
        "displayName": "Add to cart events are leveraged by Coveo ML Event Recommendation models",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "addToCart",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "EQUALS",
        "paramValue": "view"
      }
    ],
    "displayName": "Event metadata",
    "name": "View Event Metadata",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "help": "The name of a field that can uniquely and permanently map the viewed page to an item in the Coveo index (e.g., <code>permanentid</code>).",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Content ID key",
        "simpleValueType": true,
        "name": "contentIdKey",
        "type": "TEXT"
      },
      {
        "help": "The value of the specified Content ID key field for the Coveo index item corresponding to the viewed page (e.g., <code>bf79a5b0-b85a-448e-875c-3b46aafe1bea</code>).",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Content ID value",
        "simpleValueType": true,
        "name": "contentIdValue",
        "type": "TEXT"
      },
      {
        "notSetText": "",
        "help": "(Optional) The type of content being viewed (see <a href=\"https://docs.coveo.com/en/1744/\">Coveo Machine Learning Recommendation Content Types</a>).",
        "macrosInSelect": true,
        "selectItems": [
          {
            "displayValue": "Articles",
            "value": "articles"
          },
          {
            "displayValue": "Products",
            "value": "products"
          }
        ],
        "displayName": "Content type",
        "simpleValueType": true,
        "name": "contentType",
        "type": "SELECT"
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "EQUALS",
        "paramValue": "custom"
      }
    ],
    "displayName": "Event metadata",
    "name": "Custom Event Metadata",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "The broad category to associate the custom event with (e.g., <code>Page Navigation</code>).",
        "displayName": "Event type",
        "simpleValueType": true,
        "name": "customEventType",
        "type": "TEXT"
      },
      {
        "help": "A concise description of the specific action that triggered the custom event (e.g., <code>Click Help Button</code>).",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Event value",
        "simpleValueType": true,
        "name": "customEventValue",
        "type": "TEXT"
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "EQUALS",
        "paramValue": "detailView"
      },
      {
        "paramName": "eventType",
        "type": "EQUALS",
        "paramValue": "addToCart"
      }
    ],
    "displayName": "Event metadata",
    "name": "E-Commerce Event Metadata",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "help": "The name of a field that can uniquely and permanently map the viewed product/variant back to an item in the Coveo index (e.g., <code>permanentid</code>).",
        "valueValidators": [
          {
            "enablingConditions": [
              {
                "paramName": "eventType",
                "type": "EQUALS",
                "paramValue": "detailView"
              }
            ],
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Content ID key",
        "simpleValueType": true,
        "name": "detailContentIdKey",
        "type": "TEXT"
      },
      {
        "help": "The value of the specified Content ID key field for the Coveo index item that corresponds to the viewed product/variant (e.g., <code>bf79a5b0-b85a-448e-875c-3b46aafe1bea</code>).",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Content ID Value",
        "simpleValueType": true,
        "name": "detailContentIdValue",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The name of a field that can uniquely and permanently identify the Coveo index item corresponding to the \"parent\" product, which regroups all other variants of the viewed product/variant (e.g., <code>parentid</code>).",
        "displayName": "Parent ID key",
        "simpleValueType": true,
        "name": "parentIdKey",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The value of the specified Parent ID key field for the Coveo index item that corresponds to the \"parent\" product of the viewed product/variant (e.g., <code>4db50da4-3efc-4543-8d2a-a1bf8b700e50</code>).",
        "displayName": "Parent ID value",
        "simpleValueType": true,
        "name": "parentIdValue",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The price of the viewed product/variant (e.g., <code>12.99</code>).",
        "displayName": "Price",
        "simpleValueType": true,
        "name": "price",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The price of the viewed product/variant after all discounts have been applied (e.g., <code>9.09</code>).",
        "displayName": "Discounted price",
        "simpleValueType": true,
        "name": "discountedPrice",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The amount of time the end user spent viewing the product/variant.",
        "displayName": "View duration",
        "simpleValueType": true,
        "name": "viewDuration",
        "type": "TEXT",
        "valueUnit": "seconds",
        "valueHint": "10.00",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "detailView",
            "type": "EQUALS"
          }
        ]
      },
      {
        "notSetText": "None",
        "help": "(Optional) Information pertaining to the way the end user viewed the product/variant.",
        "macrosInSelect": true,
        "selectItems": [
          {
            "displayValue": "View",
            "value": "view"
          },
          {
            "displayValue": "Quickview (e.g., modal)",
            "value": "quickview"
          },
          {
            "displayValue": "Screenshot",
            "value": "screenshot"
          },
          {
            "displayValue": "Video",
            "value": "video"
          }
        ],
        "displayName": "Action cause",
        "simpleValueType": true,
        "name": "actionCause",
        "type": "SELECT",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "detailView",
            "type": "EQUALS"
          }
        ]
      },
      {
        "help": "(Optional) The name of the viewed product/variant (e.g., <code>Chair (Blue)</code>).",
        "displayName": "Product name",
        "simpleValueType": true,
        "name": "name",
        "type": "TEXT"
      },
      {
        "help": "(Optional) A list of categories associated with the product/variant. Must be a JavaScript array of strings (e.g., <code>[\"products\", \"gaming\", \"mouse\"]</code>)",
        "macrosInSelect": true,
        "selectItems": [],
        "displayName": "Product categories",
        "simpleValueType": true,
        "name": "categories",
        "type": "SELECT"
      },
      {
        "help": "(Optional) A list of brands associated with the product/variant. Must be a JavaScript array of strings (e.g., <code>[\"acme\", \"acmetech\"]</code>)",
        "macrosInSelect": true,
        "selectItems": [],
        "displayName": "Product brands",
        "simpleValueType": true,
        "name": "brands",
        "type": "SELECT"
      },
      {
        "help": "(Optional) The number of product units that were added to or removed from the cart.",
        "valueValidators": [],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "addToCart"
          }
        ],
        "displayName": "Quantity",
        "simpleValueType": true,
        "name": "quantity",
        "type": "TEXT"
      },
      {
        "type": "TEXT",
        "name": "cartId",
        "displayName": "Cart ID",
        "simpleValueType": true,
        "help": "(Optional) The unique identifier of the target cart.",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "addToCart",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "NOT_EQUALS",
        "paramValue": "load"
      }
    ],
    "displayName": "Document metadata",
    "name": "Document Metadata",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "help": "The language of the current page. Must be a valid <a href='https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes'>ISO-639-1 code</a> (e.g., <code>en</code>)",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Language",
        "simpleValueType": true,
        "name": "language",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The URL of the current page. Defaults to <code>window.location</code>.",
        "displayName": "Location",
        "simpleValueType": true,
        "name": "location",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The title of the current page. Defaults to <code>document.title</code>.",
        "displayName": "Title",
        "simpleValueType": true,
        "name": "title",
        "type": "TEXT"
      },
      {
        "help": "(Optional) Whether the current end user is anonymous. Allowed values are <code>true</code> and <code>false</code>. Defaults to <code>false</code>.",
        "displayName": "Is anonymous",
        "simpleValueType": true,
        "name": "isAnonymous",
        "type": "TEXT"
      },
      {
        "displayName": "Username",
        "simpleValueType": true,
        "name": "username",
        "type": "TEXT"
      },
      {
        "help": "(Optional) A human-readable name to display in usage analytics reports for the current user (e.g., <code>Alice Smith</code>).",
        "enablingConditions": [
          {
            "paramName": "username",
            "type": "PRESENT",
            "paramValue": ""
          }
        ],
        "displayName": "User display name",
        "simpleValueType": true,
        "name": "userDisplayName",
        "type": "TEXT"
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "NOT_EQUALS",
        "paramValue": "load"
      }
    ],
    "displayName": "Custom metadata (leverageable by Coveo ML and in Coveo UA reports)",
    "name": "Custom Data",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "name": "customDataTable",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "isUnique": true,
            "type": "TEXT"
          },
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          },
          {
            "selectItems": [
              {
                "displayValue": "Coveo UA reporting",
                "value": "usageanalytics"
              },
              {
                "displayValue": "Coveo ML context",
                "value": "ml"
              },
              {
                "displayValue": "All",
                "value": "all"
              }
            ],
            "defaultValue": "usageanalytics",
            "displayName": "Purpose",
            "name": "purpose",
            "type": "SELECT"
          }
        ],
        "type": "SIMPLE_TABLE"
      },
      {
        "name": "customDataObjects",
        "simpleTableColumns": [
          {
            "macrosInSelect": true,
            "selectItems": [],
            "valueValidators": [],
            "defaultValue": "",
            "help": "A JavaScript object to merge with the other specified custom metadata.",
            "displayName": "Object to merge",
            "name": "object",
            "type": "SELECT"
          },
          {
            "selectItems": [
              {
                "displayValue": "Usage Analytics Reporting",
                "value": "usageanalytics"
              },
              {
                "displayValue": "Machine Learning Context",
                "value": "ml"
              },
              {
                "displayValue": "Both",
                "value": "all"
              }
            ],
            "defaultValue": "usageanalytics",
            "displayName": "Purpose",
            "name": "purpose",
            "type": "SELECT"
          }
        ],
        "type": "SIMPLE_TABLE"
      }
    ]
  },
  {
    "displayName": "Configuration",
    "name": "Configuration",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "help": "An API key granting only the <strong>Usage Analytics - Push</strong> privilege in the target Coveo Cloud organization (see <a href=\"https://docs.coveo.com/en/1718/\">Adding and Managing API Keys</a>).",
        "valueValidators": [
          {
            "enablingConditions": [
              {
                "paramName": "eventType",
                "type": "EQUALS",
                "paramValue": "load"
              }
            ],
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "API key",
        "simpleValueType": true,
        "name": "apiKey",
        "type": "TEXT"
      },
      {
        "macrosInSelect": true,
        "selectItems": [
          {
            "displayValue": "Coveo Cloud",
            "value": "https://usageanalytics.coveo.com/"
          },
          {
            "displayValue": "Coveo Cloud (HIPAA)",
            "value": "http://usageanalyticshipaa.cloud.coveo.com/"
          }
        ],
        "valueValidators": [],
        "help": "The target Coveo Cloud platform environment.",
        "displayName": "Analytics endpoint",
        "simpleValueType": true,
        "name": "analyticsEndpoint",
        "type": "SELECT"
      },
      {
        "help": "The version of the script to load",
        "valueValidators": [
          {
            "args": [
              "\\d\\.\\d"
            ],
            "enablingConditions": [
              {
                "paramName": "scriptVersion",
                "type": "PRESENT",
                "paramValue": ""
              }
            ],
            "errorMessage": "You must use the format <code>MAJOR.MINOR</code> (e.g., <code>1.0</code>)",
            "type": "REGEX"
          }
        ],
        "displayName": "Script version",
        "simpleValueType": true,
        "name": "scriptVersion",
        "type": "TEXT",
        "valueHint": "1.0"
      }
    ]
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoua"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoua.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoua.t"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoanalytics"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_referrer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_title",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://static.cloud.coveo.com/coveo.analytics.js/*/coveoua.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const isLoadEventType = () => data.eventType === "load";

const validateVariablesToLoadScript = () => {
  const COMMON_ERROR_MESSAGE = "Coveo Analytics Script could not be initialized.\n";

  const missingKeys = ['analyticsEndpoint', 'apiKey'].filter(key => !data[key]);
  const hasMissingKeys = missingKeys.length > 0;
  if (missingKeys.length > 0) {
    if (isLoadEventType()) {
      log(COMMON_ERROR_MESSAGE + "The \"Configuration\" section is missing the following keys: " + missingKeys.join(", "));
    } else {
      log(COMMON_ERROR_MESSAGE + "You must either provide the variables in the \"Configuration\" section to the first Coveo Analytics tag or add the \"Load\" event type before this tag.");
    }
    return false;
  }
  
  return true;
};

const loadCoveoAnalyticsScript = (onSuccess) => {
  const injectScript = require("injectScript");
  const setInWindow = require("setInWindow");
  
  const createArgumentsQueue = require('createArgumentsQueue');
  const coveoua = createArgumentsQueue('coveoua', 'coveoua.q');
  const getTimestamp = require('getTimestamp');
  setInWindow('coveoua.t', getTimestamp(), true);
  
  coveoua("init", data.apiKey, data.analyticsEndpoint);
  coveoua("onLoad", function() {
    log('Coveo Analytics Initialized');
  });
  
  const scriptVersion = data.scriptVersion || "1.0";
  const url = "https://static.cloud.coveo.com/coveo.analytics.js/" + scriptVersion + "/coveoua.js";
  injectScript(url, onSuccess, data.gtmOnFailure, url);
};
  
const loadCoveoAnalyticsScriptIfNotLoaded = (onSuccess, onFailure) => {
  const copyFromWindow = require("copyFromWindow");
  const coveoanalytics = copyFromWindow("coveoanalytics");
  
  if (!coveoanalytics) {
    if (!validateVariablesToLoadScript()) {
      onFailure();
    }
    loadCoveoAnalyticsScript(onSuccess);
  } else {
    onSuccess();
  }
};

const addToObject = function(obj) {
  for (let index in arguments) {
    const obj2 = arguments[index];
    for (let key in obj2) {
      if (obj2.hasOwnProperty(key)) {
        obj[key] = obj2[key];
      }
    }
  }
  return obj;
};

const generateCustomData = () => {
  const ensureObjectHasContextPrefix = (obj) => {
    const contextPrefix = "context_";
    const newObj = {};
    for (let key in obj) {
      const newKey = key.indexOf(contextPrefix) === 0 ? key : contextPrefix + key;
      newObj[newKey] = obj[key];
    }
    return newObj;
  };

  const rowIsForAll = (obj) => obj.purpose === 'all';
  const rowIsForUA = (obj) => obj.purpose === 'usageanalytics' || rowIsForAll(obj);
  const rowIsForML = (obj) => obj.purpose === 'ml' || rowIsForAll(obj);

  const customDataObject = {};

  if (!!data.customDataTable && data.customDataTable.length > 0) {
    const makeSafeTableMap = (table) => {
      const makeTableMap = require('makeTableMap');
      return table ? makeTableMap(table, 'key', 'value') : {};
    };

    const objForUsageAnalytics = makeSafeTableMap(data.customDataTable.filter(rowIsForUA));
    const objForContext = ensureObjectHasContextPrefix(
      makeSafeTableMap(data.customDataTable.filter(rowIsForML))
    );
    addToObject(customDataObject, 
                objForUsageAnalytics,
                objForContext);
  }

  if (!!data.customDataObjects && data.customDataObjects.length > 0) {
    const getValidCustomDataObjectsFromArray = (objects) => {
      return objects.map(row => row.object).filter(obj => typeof obj === 'object');
    };

    getValidCustomDataObjectsFromArray(data.customDataObjects.filter(rowIsForUA))
      .forEach(obj => addToObject(customDataObject, obj));
    getValidCustomDataObjectsFromArray(data.customDataObjects.filter(rowIsForML))
      .map(ensureObjectHasContextPrefix)
      .forEach(obj => addToObject(customDataObject, obj));
  }
  
  return customDataObject;
};

const eventTypeMap = {
  view: "view",
  custom: "custom",
  detailView: "custom",
  addToCart: "custom"
};

const eventDataForTypeMap = {
  view: {
    contentIdKey: data.contentIdKey,
    contentIdValue: data.contentIdValue,
    customData: {}
  },
  custom: {
    eventType: data.customEventType,
    eventValue: data.customEventValue,
    customData: {}
  },
  detailView: {
    eventType: "detailView",
    eventValue: data.detailContentIdValue,
    customData: {
      contentIdKey: data.detailContentIdKey,
      contentIdValue: data.detailContentIdValue,
      parentIdKey: data.parentIdKey,
      parentIdValue: data.parentIdValue,
      price: data.price,
      discountedPrice: data.discountedPrice,
      viewDuration: data.viewDuration,
      actionCause: data.actionCause,
      name: data.name,
      categories: data.categories,
      brands: data.brands
    }
  },
  addToCart: {
    eventType: "addToCart",
    eventValue: data.detailContentIdValue,
    customData: {
      contentIdKey: data.detailContentIdKey,
      contentIdValue: data.detailContentIdValue,
      parentIdKey: data.parentIdKey,
      parentIdValue: data.parentIdValue,
      price: data.price,
      discountedPrice: data.discountedPrice,
      quantity: data.quantity,
      cartId: data.cartId,
      name: data.name,
      categories: data.categories,
      brands: data.brands
    }
  }
};

const logCoveoAnalyticsEvent = () => {
  const eventDataForType = eventDataForTypeMap[data.eventType];
  addToObject(eventDataForType.customData, generateCustomData());

  const getUrl = require("getUrl");
  const getReferrerUrl = require("getReferrerUrl");
  const readTitle = require("readTitle");
  const eventData = {
    location: data.location || getUrl(),
    referrer: data.referrer || getReferrerUrl(),
    language: data.language,
    title: data.title || readTitle(),
    anonymous: data.isAnonymous,
    username: data.username,
    userDisplayName: data.userDisplayName
  };

  addToObject(eventData, eventDataForType);

  log('Coveo Analytics Data =', eventData);

  const createArgumentsQueue = require('createArgumentsQueue');
  const coveoua = createArgumentsQueue('coveoua', 'coveoua.q');
  coveoua("send", eventTypeMap[data.eventType], eventData);
};

loadCoveoAnalyticsScriptIfNotLoaded(() => {
  if (!isLoadEventType()) {
     logCoveoAnalyticsEvent();
  }
  data.gtmOnSuccess();
}, () => {
  data.gtmOnFailure();
});


___NOTES___

Created on 9/16/2019, 10:11:06 AM
