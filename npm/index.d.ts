declare module '@apiverve/initialismgenerator' {
  export interface initialismgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface initialismgeneratorResponse {
    status: string;
    error: string | null;
    data: InitialismGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface InitialismGeneratorData {
      initialism: null | string;
      phrase:     null | string;
      wordCount:  number | null;
      words:      (null | string)[];
  }

  export default class initialismgeneratorWrapper {
    constructor(options: initialismgeneratorOptions);

    execute(callback: (error: any, data: initialismgeneratorResponse | null) => void): Promise<initialismgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: initialismgeneratorResponse | null) => void): Promise<initialismgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<initialismgeneratorResponse>;
  }
}
