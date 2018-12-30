"use strict";
const puppeteer = require(`${process.argv[2]}/puppeteer`);
const createPdf = async options => {
  let browser;
  try {
    browser = await puppeteer.launch({
      // headless: false,
      args: ["--no-sandbox", "--disable-setuid-sandbox"]
    });
    const page = await browser.newPage();
    console.log(options.input);
    if (options.viewPortWidth) {
      await page.setViewport({ width: options.viewPortWidth, height: options.viewPortHeight });
    }
    await page.goto(options.input, { waitUntil: "networkidle2" });
    delete options.input;
    console.error(options);
    console.error(await browser.userAgent())
    await page.emulateMedia('screen');
    console.error(await page.viewport());
    await page.screenshot({ path: 'full_img.png', fullPage: true });
    let dpr = await page.evaluate('window.devicePixelRatio');
    console.log(dpr);
    await page.pdf(options);
  } catch (err) {
    console.error(err.message);
  } finally {
    if (browser) {
      browser.close();
    }
    process.exit();
  }
};
const parseCmd = () => {
  let options = {
    margin: {
      top: "10mm",
      bottom: "10mm",
      left: "10mm",
      right: "10mm"
    },
    landscape: false,
    // format: "A4", // Format takes precedence over width and height if set
    path: process.argv[process.argv.length - 1],
    input: process.argv[process.argv.length - 2],
    scale: 0.5,
    displayHeaderFooter: false,
    printBackground: true
  };
  for (let i = 3; i < process.argv.length - 2; i += 2) {
    const value = process.argv[i + 1];
    const option = process.argv[i]
    switch (option) {
      // case "--page-size":
      //   options.format = value;
      //   break;
      case "--orientation":
        options.landscape = value === "Landscape";
        break;
      case "--zoom":
        options.scale = parseFloat(value);
        break;
      case "--width":
        delete options.format;
        options.width = value;
        break;
      case "--height":
        delete options.format;
        options.height = value;
        break;
      case "--viewport-size":
        const [width, height] = value.split('x')
        options.viewPortWidth = Number(width)
        options.viewPortHeight = Number(height)
        options.height = options.viewPortHeight
        options.width = options.viewPortWidth
        break;
      case "--margin-top":
        options.margin.top = value + 'mm';
        break;
      case "--margin-bottom":
        options.margin.bottom = value + 'mm';
        break;
      case "--margin-left":
        options.margin.left = value + 'mm';
        break;
      case "--margin-right":
        options.margin.right = value + 'mm';
        break;
      default:
        console.log(`Unknown option: ${option} with value ${value}`);
    }
  }
  return options;
};
createPdf(parseCmd());
