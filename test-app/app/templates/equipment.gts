import Component from '@glimmer/component';
import { LinkTo } from '@ember/routing';
import type EquipmentController from 'ember-vite-hmr-repro/controllers/equipment';

interface EquipmentRouteTemplateSignature {
  Args: {
    controller: EquipmentController;
  };
}

export default class EquipmentRouteTemplate extends Component<EquipmentRouteTemplateSignature> {
  <template>
    <h1 class="equipment-page">Equipment</h1>

    {{! consume `groupBy` in a tracking context so the mandatory setter is armed }}
    <p>groupBy: {{@controller.groupBy}}</p>

    <LinkTo @route="project">Go to project &rarr;</LinkTo>
  </template>
}
