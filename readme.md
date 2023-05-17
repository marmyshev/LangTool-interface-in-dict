# 1C:Language Tool 1.2 for 1C:EDT 2022.1 Demo example

This example shows how to use translation of a language user interface, Romanian in this example,
of 1C applicaiton in `*.lsdict` single files (localized strings dictionary).
Common dictionary contains non-context and single translations for each source string.

If some source interface string contains in several objects - translation will be the same in each object. 
To set dfferent translation of some source string in some object - use context storage insead of dictionary.

## Settings

Key point is to setup editing translation storage as common dictionary - it stores in `LangToolInterfaceInDict/.settings/translation_storages.yml` (translation storage settings config file)

```yml
edit:
  presentation: Default editing storage
  storages:
  - dictionary:common-interface
read:
- dictionary:common-interface
dictionary:
  common-interface:
    presentation: Interface common translations
    format: dict
    file_extension: lsdict
    file_path: src/common
    read_only: false
    feature_filter:
      interface: ONLY
```

All translation from English into Romanian (as example) will be stored in single file: `LangToolInterfaceInDict.Romanian/src/common_ro.lsdict` as `Source=Translation` (`Key=Value`) pairs.

## Translated application

In general case, You don't need to generate new project (generate configuration/application) to get translation - 
simply export your porject into Infobase.
All interface languages (external languages) will exported into 1C:Enterprise xml files and deploied into Infobase.

See example of export in `xml-export` folder.

## Generate translated DT project

In some cases you might need to generate 1C:EDT source porject with all translation burned down in source code.

Use context menu in 1C Navigator on project: `Translations -> Translate configuration` - setup translated project settings:

1. Set different name of translated project
2. Leave `Default language` the same as in source project
3. Leave `Script variant` the same as in source project
4. Add interface lanuages that should be included into translated project.
