# XML Prague 2018 - XSPEC meetup : Use case of xspec integration test with Maven and Oxygen

See https://github.com/xspec/xspec/issues/158

This is a simple demo repo: it's an XML to HTML transformation which need to deal with CALS table.

cals2html is a common task, so we call a library that do it, using:

```xml
<xsl:import href="cals2html:/cals2html.xsl"/>
```

This special URI is resolved thanks to a catalog.xml which is build by the [xspec-maven-plugin](https://github.com/xspec/xspec-maven-plugin-1).

## Integration Test

In the src/test/sample you will find a sample.xml and the result of the transformation sample.html

The Xspec file at src/test/xspec will just check that launching the transformation will get the same result sample.html as the one in the repo.

Whenever the cals2html library is changed, the xspec test will failed and the project build with Maven will fail.
You then have to update the result "sample.html" and check every changes is OK.

## How to run it:

- Install Maven
- clone dependency repo :
    - https://github.com/mricaud/xml-prague-2018-demo_cals2html
    - https://github.com/mricaud/xml-prague-2018-demo_myLib 

- Build each dependency by lauching: `mvn install`
(when lauching this command the current working directory must be the one of the pom.xml of the project is)

- Now you can build the current project or just test it using: `mvn test` 

## Slides

Please see xml-prague-2018-xspec-user-meetup-it.odp
