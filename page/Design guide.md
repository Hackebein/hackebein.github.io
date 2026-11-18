<link rel="stylesheet" href="/Design%20guide/guide.css?v=14">

<article class="design-guide">
<p class="guide-intro">I like clean, simple layouts with a few odd details. I use grayscale and save color for what needs attention.</p>

<section class="guide-section" aria-labelledby="guide-color">
  <h2 id="guide-color">Color</h2>
  <div class="guide-neutrals">
    <div class="guide-color-card" style="--chip:#0a0a0a">
      <span class="guide-chip" aria-hidden="true"></span>
      <div class="guide-color-details">
        <b>Canvas</b>
        <dl class="guide-color-values"><dt>HEX</dt><dd><code>#0A0A0A</code></dd><dt>RGB</dt><dd><code>10 10 10</code></dd></dl>
      </div>
    </div>
    <div class="guide-color-card" style="--chip:#141414">
      <span class="guide-chip" aria-hidden="true"></span>
      <div class="guide-color-details">
        <b>Surface</b>
        <dl class="guide-color-values"><dt>HEX</dt><dd><code>#141414</code></dd><dt>RGB</dt><dd><code>20 20 20</code></dd></dl>
      </div>
    </div>
    <div class="guide-color-card" style="--chip:#2a2a2a">
      <span class="guide-chip" aria-hidden="true"></span>
      <div class="guide-color-details">
        <b>Divider</b>
        <dl class="guide-color-values"><dt>HEX</dt><dd><code>#2A2A2A</code></dd><dt>RGB</dt><dd><code>42 42 42</code></dd></dl>
      </div>
    </div>
    <div class="guide-color-card" style="--chip:#aaaaaa">
      <span class="guide-chip" aria-hidden="true"></span>
      <div class="guide-color-details">
        <b>Secondary</b>
        <dl class="guide-color-values"><dt>HEX</dt><dd><code>#AAAAAA</code></dd><dt>RGB</dt><dd><code>170 170 170</code></dd></dl>
      </div>
    </div>
    <div class="guide-color-card" style="--chip:#ffffff">
      <span class="guide-chip" aria-hidden="true"></span>
      <div class="guide-color-details">
        <b>Main text</b>
        <dl class="guide-color-values"><dt>HEX</dt><dd><code>#FFFFFF</code></dd><dt>RGB</dt><dd><code>255 255 255</code></dd></dl>
      </div>
    </div>
  </div>
  <h3>Accent colors</h3>
  <div class="guide-color-panel">
    <div class="guide-wheel" role="img" aria-label="A triangle connects orange and its two accents at plus and minus 120 degrees on the hue wheel.">
      <span class="guide-wheel-node" style="--turn:0deg;--dot:var(--guide-orange)"></span>
      <span class="guide-wheel-node" style="--turn:120deg;--dot:var(--guide-green)"></span>
      <span class="guide-wheel-node" style="--turn:-120deg;--dot:var(--guide-purple)"></span>
    </div>
    <div class="guide-accents">
      <div class="guide-color-card" style="--chip:var(--guide-orange)">
        <span class="guide-chip" aria-hidden="true"></span>
        <div class="guide-color-details">
          <b>Orange</b>
          <dl class="guide-color-values"><dt>HEX</dt><dd><code>#BE4706</code></dd><dt>RGB</dt><dd><code>190 71 6</code></dd></dl>
          <small>My favorite color</small>
        </div>
      </div>
      <div class="guide-color-card" style="--chip:var(--guide-green)">
        <span class="guide-chip" aria-hidden="true"></span>
        <div class="guide-color-details">
          <b>Green</b>
          <dl class="guide-color-values"><dt>HEX</dt><dd><code>#06BE47</code></dd><dt>RGB</dt><dd><code>6 190 71</code></dd></dl>
          <small>+120°</small>
        </div>
      </div>
      <div class="guide-color-card" style="--chip:var(--guide-purple)">
        <span class="guide-chip" aria-hidden="true"></span>
        <div class="guide-color-details">
          <b>Purple</b>
          <dl class="guide-color-values"><dt>HEX</dt><dd><code>#4706BE</code></dd><dt>RGB</dt><dd><code>71 6 190</code></dd></dl>
          <small>−120°</small>
        </div>
      </div>
      <div class="guide-color-card" style="--chip:var(--guide-red)">
        <span class="guide-chip" aria-hidden="true"></span>
        <div class="guide-color-details">
          <b>Oxblood</b>
          <dl class="guide-color-values"><dt>HEX</dt><dd><code>#A72946</code></dd><dt>RGB</dt><dd><code>167 41 70</code></dd></dl>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="guide-section" aria-labelledby="guide-type">
  <h2 id="guide-type">Typography</h2>
  <table class="guide-type-table" role="table" aria-label="Typography roles">
    <colgroup><col class="guide-type-size"><col><col class="guide-type-family"></colgroup>
    <thead role="rowgroup">
      <tr role="row"><th scope="col" role="columnheader">Role</th><th scope="col" role="columnheader">Sample</th><th scope="col" role="columnheader">Typeface</th></tr>
    </thead>
    <tbody role="rowgroup">
      <tr class="guide-type-display" role="row">
        <th scope="row" role="rowheader"><span>Display</span><code>3 rem</code></th>
        <td role="cell"><span class="guide-type-sample">Hackebein</span></td>
        <td role="cell">Nunito Sans</td>
      </tr>
      <tr class="guide-type-section" role="row">
        <th scope="row" role="rowheader"><span>Section heading</span><code>1.5 rem</code></th>
        <td role="cell"><span class="guide-type-sample">Project notes</span></td>
        <td role="cell">Nunito Sans</td>
      </tr>
      <tr class="guide-type-body" role="row">
        <th scope="row" role="rowheader"><span>Body</span><code>1 rem</code></th>
        <td role="cell"><span class="guide-type-sample">From a sketch to a rolling product.</span></td>
        <td role="cell">Nunito Sans</td>
      </tr>
      <tr class="guide-type-label" role="row">
        <th scope="row" role="rowheader"><span>Label</span><code>0.875 rem</code></th>
        <td role="cell"><span class="guide-type-sample">Project status</span></td>
        <td role="cell">Nunito Sans</td>
      </tr>
      <tr class="guide-type-caption" role="row">
        <th scope="row" role="rowheader"><span>Caption</span><code>0.8125 rem</code></th>
        <td role="cell"><span class="guide-type-sample guide-mono">Illustration of the playback offset</span></td>
        <td role="cell">Cascadia Mono</td>
      </tr>
      <tr class="guide-type-code" role="row">
        <th scope="row" role="rowheader"><span>Code</span><code>0.875 rem</code></th>
        <td role="cell"><code class="guide-type-sample guide-mono">tracker.position</code></td>
        <td role="cell">Cascadia Mono</td>
      </tr>
    </tbody>
  </table>
</section>

<section class="guide-section" aria-labelledby="guide-identity">
  <h2 id="guide-identity">Marks</h2>
  <div class="guide-marks">
    <figure>
      <div class="guide-mark-art"><span class="guide-mark">H</span></div>
      <figcaption><b>Hackebein</b><code>U+0048</code></figcaption>
    </figure>
    <figure>
      <div class="guide-mark-art"><img src="/Design%20guide/object-tracking.png" alt="A white tracker sitting on a white cube" width="1600" height="1600"></div>
      <figcaption><b>Object Tracking</b><span>3D render</span></figcaption>
    </figure>
  </div>
</section>
</article>
